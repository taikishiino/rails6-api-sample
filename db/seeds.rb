Dir.glob("#{Rails.root}/db/seeds/*.yml").each do |yaml_filename|
  # yamlのファイル名から、対応するモデルクラスを特定し、クラスをロードする
  # 下記行が無いと、「ArgumentError: undefined class/module」が発生する。
  File.basename(yaml_filename,".yml").classify.constantize

  # yamlに記述されたレコードをDBに登録する。
  File.open(yaml_filename) do |load_target_yaml|
    records = YAML.load(load_target_yaml)

    records.each do |record|
      record.dup.save
    end
  end
end

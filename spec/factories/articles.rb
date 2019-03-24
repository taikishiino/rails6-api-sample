FactoryBot.define do
  factory :article do
    sequence(:title) {|n| "blog_title_#{n}"}
    sequence(:text) {|n| "blog_body_#{n}"}
  end
end
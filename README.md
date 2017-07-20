# User

## association
`has_many :articles, :comments, :stock`

## table
- id :integer
- created_at :timestamp
- updated_at :timestamp
- username :string
- email :string
- password :string

- firstname :string
- lastname :string
- website :string
- company :string
- residence :string
- profile :text
- facebook_id :string
- linkedin_id :string
- google_plus_id :string
- avatar :string

# Article

## association
`has_many :photos, :comments`
`belongs_to :user`

## table
- id :integer
- created_at :timestamp
- updated_at :timestamp
- user_id :integer
- title :string
- text :text

# Photo

## association
`belongs_to :articles`

## table
- id :integer
- created_at :timestamp
- updated_at :timestamp
- article_id :integer
- content :string

# Stock

## association
`belongs_to :user, :article`

## table
- id :integer
- created_at :timestamp
- updated_at :timestamp
- user_id :integer
- article_id :integer

# Comment

## association
`belongs_to :user, :article`

## table
- id :integer
- created_at :timestamp
- updated_at :timestamp
- user_id :integer
- prototype_id :integer
- content :text

# like

## association
`belongs_to :user, :article`

## table
- id :integer
- created_at :timestamp
- updated_at :timestamp
- user_id :integer
- article_id :integer

# liker

## association
`has_many :likes`
`belongs_to :article`

## table
- id :integer
- created_at :timestamp
- updated_at :timestamp
- like_id :integer
- article_id :integer

test
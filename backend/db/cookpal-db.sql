-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Recipe" (
    "Id" int   NOT NULL,
    "Title" string   NOT NULL,
    "Slug" string   NOT NULL,
    "Total_time" int  DEFAULT 0 NOT NULL,
    "Rating" float  DEFAULT 0 NOT NULL,
    "Image_url" string   NULL,
    "Created_at" string   NOT NULL,
    "Updated_at" string   NOT NULL,
    CONSTRAINT "pk_Recipe" PRIMARY KEY (
        "Id"
     ),
    CONSTRAINT "uc_Recipe_Slug" UNIQUE (
        "Slug"
    )
);

-- Ingredients
CREATE TABLE "Ingredient" (
    "Id" int   NOT NULL,
    "Title" string   NOT NULL,
    "Created_at" string   NOT NULL,
    "Updated_at" string   NOT NULL,
    CONSTRAINT "pk_Ingredient" PRIMARY KEY (
        "Id"
     )
);

CREATE TABLE "RecipeIngredients" (
    "Id" int   NOT NULL,
    "Recipe_id" int   NOT NULL,
    "Ingredient_id" int   NOT NULL,
    "Created_at" string   NOT NULL,
    "Updated_at" string   NOT NULL,
    CONSTRAINT "pk_RecipeIngredients" PRIMARY KEY (
        "Id"
     )
);

-- Categories
CREATE TABLE "Category" (
    "Id" int   NOT NULL,
    "Name" string   NOT NULL,
    "Slug" string   NOT NULL,
    "Created_at" string   NOT NULL,
    "Updated_at" string   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "Id"
     ),
    CONSTRAINT "uc_Category_Slug" UNIQUE (
        "Slug"
    )
);

CREATE TABLE "RecipeCategories" (
    "Id" int   NOT NULL,
    "Recipe_id" int   NOT NULL,
    "Category_id" int   NOT NULL,
    "Created_at" string   NOT NULL,
    "Updated_at" string   NOT NULL,
    CONSTRAINT "pk_RecipeCategories" PRIMARY KEY (
        "Id"
     )
);

ALTER TABLE "RecipeIngredients" ADD CONSTRAINT "fk_RecipeIngredients_Recipe_id" FOREIGN KEY("Recipe_id")
REFERENCES "Recipe" ("Id");

ALTER TABLE "RecipeIngredients" ADD CONSTRAINT "fk_RecipeIngredients_Ingredient_id" FOREIGN KEY("Ingredient_id")
REFERENCES "Ingredient" ("Id");

ALTER TABLE "RecipeCategories" ADD CONSTRAINT "fk_RecipeCategories_Recipe_id" FOREIGN KEY("Recipe_id")
REFERENCES "Recipe" ("Id");

ALTER TABLE "RecipeCategories" ADD CONSTRAINT "fk_RecipeCategories_Category_id" FOREIGN KEY("Category_id")
REFERENCES "Category" ("Id");


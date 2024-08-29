module.exports = {
  schema: '../backend/schema.graphql',
  documents: ["src/**/*.graphql"],
  overwrite: true,
  generates: {
    "./src/graphql/generated.ts": {
      plugins: [
        "typescript",
        "typescript-operations",
        "typescript-react-apollo",
      ],
      config: {
        withHooks: true,
      },
    },
  },
};
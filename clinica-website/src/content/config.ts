import { defineCollection, z } from 'astro:content';

const especialidadesCollection = defineCollection({
  schema: z.object({
    title: z.string(),
    description: z.string(),
    excerpt: z.string(),
    order: z.number().default(99),
  }),
});

const glossarioCollection = defineCollection({
  schema: z.object({
    term: z.string(),
    definition: z.string(),
  }),
});

export const collections = {
  especialidades: especialidadesCollection,
  glossario: glossarioCollection,
};

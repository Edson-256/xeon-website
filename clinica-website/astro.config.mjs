import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

// TODO: Substituir pelo domínio real da clínica
const SITE_URL = 'https://www.clinicaoncologia.com.br';

export default defineConfig({
  site: SITE_URL,
  output: 'static',
  trailingSlash: 'always',
  build: {
    format: 'directory',
    assets: '_astro',
  },
  integrations: [
    sitemap({
      filter: (page) => !page.includes('/404'),
    }),
  ],
  vite: {
    build: {
      cssMinify: true,
      minify: 'esbuild',
    },
  },
});

import { INestApplication } from '@nestjs/common';
import { SwaggerModule, DocumentBuilder } from '@nestjs/swagger';

export function setupSwagger(app: INestApplication) {
  // TODO: setting up swagger api/documentation
  const config = new DocumentBuilder()
    .setTitle('Supply and Distribution Monitoring Backend')
    .setDescription('The SnD API description')
    .setVersion('1.0')
    .addTag('auth', 'endpoint for auth get token')
    .addTag('trucks', 'endpoint for truck transactioin')
    .addTag('shipments', 'endpoint for shipment transactioin')
    /* .addTag('articles', 'endpoint for article transaction') */
    .addTag('users', 'endpoint for users transaction')
    .setBasePath('api/docs')
    .addBearerAuth()
    .addServer(`http://localhost:${process.env.PORT}/`, 'HTTP')
    .addServer('https://api.romijulianto.my.id/snd', 'HTTPS')
    .setContact(
      'Romi Julianto',
      'https://www.linkedin.com/in/romijulianto/',
      'romyjulians@gmail.com',
    )
    .build();

  const document = SwaggerModule.createDocument(app, config);

  SwaggerModule.setup('api/docs', app, document, {
    swaggerOptions: {
      displayRequestDuration: true,
      filter: true,
    },
    customSiteTitle: 'API WebGIS Supply and Distribution Monitoring',
    swaggerUrl: `http://localhost:${process.env.PORT}/snd/api/docs/`,
    explorer: true,
    url: `http://localhost:${process.env.PORT}/`,
    useGlobalPrefix: true,
    customCss: '',
    customCssUrl: '',
    customJs: '',
    customJsStr: '',
    customfavIcon: 'https://phi.pertamina.com/img/logo-pertamina-48x48.png',
    validatorUrl: '',
    jsonDocumentUrl: '',
    yamlDocumentUrl: '',
  });
}

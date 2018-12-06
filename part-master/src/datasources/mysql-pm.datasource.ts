import {inject} from '@loopback/core';
import {juggler} from '@loopback/repository';
import * as config from './mysql-pm.datasource.json';

export class MysqlPMDataSource extends juggler.DataSource {
  static dataSourceName = 'mysqlPM';

  constructor(
    @inject('datasources.config.mysqlPM', {optional: true})
    dsConfig: object = config,
  ) {
    super(dsConfig);
  }
}

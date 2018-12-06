import {DefaultCrudRepository, juggler} from '@loopback/repository';
import {PartsMaster} from '../models';
import {MysqlPMDataSource} from '../datasources';
import {inject} from '@loopback/core';

export class PartsMasterRepository extends DefaultCrudRepository<
  PartsMaster,
  typeof PartsMaster.prototype.part_nbr
> {
  constructor(
    @inject('datasources.mysqlPM') dataSource: MysqlPMDataSource,
  ) {
    super(PartsMaster, dataSource);
  }
}

import {
  Count,
  CountSchema,
  Filter,
  repository,
  Where,
} from '@loopback/repository';
import {
  post,
  param,
  get,
  getFilterSchemaFor,
  getWhereSchemaFor,
  patch,
  del,
  requestBody,
} from '@loopback/rest';
import { PartsMaster } from '../models';
import { PartsMasterRepository } from '../repositories';

export class PartsMasterController {
  constructor(
    @repository(PartsMasterRepository)
    public partsMasterRepository: PartsMasterRepository,
  ) { }

  @post('/parts-masters', {
    responses: {
      '200': {
        description: 'PartsMaster model instance',
        content: { 'application/json': { schema: { 'x-ts-type': PartsMaster } } },
      },
    },
  })
  async create(@requestBody() partsMaster: PartsMaster): Promise<PartsMaster> {
    return await this.partsMasterRepository.create(partsMaster);
  }

  @get('/parts-masters/count', {
    responses: {
      '200': {
        description: 'PartsMaster model count',
        content: { 'application/json': { schema: CountSchema } },
      },
    },
  })
  async count(
    @param.query.object('where', getWhereSchemaFor(PartsMaster)) where?: Where,
  ): Promise<Count> {
    return await this.partsMasterRepository.count(where);
  }

  @get('/parts-masters', {
    responses: {
      '200': {
        description: 'Array of PartsMaster model instances',
        content: {
          'application/json': {
            schema: { type: 'array', items: { 'x-ts-type': PartsMaster } },
          },
        },
      },
    },
  })
  async find(
    @param.query.object('filter', getFilterSchemaFor(PartsMaster)) filter?: Filter,
  ): Promise<PartsMaster[]> {
    return await this.partsMasterRepository.find(filter);
  }

  @patch('/parts-masters', {
    responses: {
      '200': {
        description: 'PartsMaster PATCH success count',
        content: { 'application/json': { schema: CountSchema } },
      },
    },
  })
  async updateAll(
    @requestBody() partsMaster: PartsMaster,
    @param.query.object('where', getWhereSchemaFor(PartsMaster)) where?: Where,
  ): Promise<Count> {
    return await this.partsMasterRepository.updateAll(partsMaster, where);
  }

  @get('/parts-masters/{part_nbr}', {
    responses: {
      '200': {
        description: 'PartsMaster model instance',
        content: { 'application/json': { schema: { 'x-ts-type': PartsMaster } } },
      },
    },
  })
  async findById(@param.path.string('part_nbr') part_nbr: string): Promise<any> {
    return await this.partsMasterRepository.findById(part_nbr);
  }

  @patch('/parts-masters/{part_nbr}', {
    responses: {
      '204': {
        description: 'PartsMaster PATCH success',
      },
    },
  })
  async updateById(
    @param.path.string('part_nbr') part_nbr: string,
    @requestBody() partsMaster: PartsMaster,
  ): Promise<void> {
    await this.partsMasterRepository.updateById(part_nbr, partsMaster);
  }

  @del('/parts-masters/{part_nbr}', {
    responses: {
      '204': {
        description: 'PartsMaster DELETE success',
      },
    },
  })
  async deleteById(@param.path.string('part_nbr') part_nbr: string): Promise<void> {
    await this.partsMasterRepository.deleteById(part_nbr);
  }
}

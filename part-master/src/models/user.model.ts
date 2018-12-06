import { Entity, model, property } from '@loopback/repository';

@model()
export class User extends Entity {
  @property({
    type: 'number',
    id: true,
    required: false,
  })
  id: number;

  @property({
    type: 'string',
  })
  first?: string;

  @property({
    type: 'string',
  })
  last?: string;

  @property({
    type: 'string',
  })
  email?: string;

  constructor(data?: Partial<User>) {
    super(data);
  }
}

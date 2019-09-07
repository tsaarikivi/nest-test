import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  imaPotato(): string {
    return 'I\'m a potato';
  }
}

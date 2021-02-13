import { Module } from '@nestjs/common';
import { AppService } from './app.service';
import { OrchestratorController } from './orchestrator/orchestrator.controller';

@Module({
  imports: [],
  controllers: [OrchestratorController],
  providers: [AppService],
})
export class AppModule {}

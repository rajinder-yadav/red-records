import { Controller, Get } from '@nestjs/common';

@Controller()
export class OrchestratorController {

  @Get("/check")
  public index(): string {
    return "Nest.js is till running!";
  }

}

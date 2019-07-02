#include "stdafx.h"


#include "CmdLineExec.h"

#include "risThreadsThreads.h"
#include "risTimeMarker.h"

#include "cxStrobeThread.h"
#include "cxStrobeParms.h"

//******************************************************************************
//******************************************************************************
//******************************************************************************
CmdLineExec::CmdLineExec()
{
}
//******************************************************************************
//******************************************************************************
//******************************************************************************
void CmdLineExec::reset()
{
}
//******************************************************************************
//******************************************************************************
//******************************************************************************

void CmdLineExec::execute(Ris::CmdLineCmd* aCmd)
{
   if (aCmd->isCmd("TP"    ))  executeTP      (aCmd);
   if (aCmd->isCmd("TEST"  ))  executeTest    (aCmd);
   if (aCmd->isCmd("GO1"   ))  executeGo1     (aCmd);
   if (aCmd->isCmd("GO2"   ))  executeGo2     (aCmd);
   if (aCmd->isCmd("GO3"   ))  executeGo3     (aCmd);
   if (aCmd->isCmd("Parms" ))  executeParms   (aCmd);
}

//******************************************************************************
//******************************************************************************
//******************************************************************************

void CmdLineExec::executeTP(Ris::CmdLineCmd* aCmd)
{
   CX::gStrobeThread->mTPFlag=aCmd->argBool(1);
}

//******************************************************************************
//******************************************************************************
//******************************************************************************

void CmdLineExec::executeTest(Ris::CmdLineCmd* aCmd)
{
   CX::gStrobeThread->mTestCode=aCmd->argInt(1);
}


//******************************************************************************
//******************************************************************************
//******************************************************************************

void CmdLineExec::executeGo1 (Ris::CmdLineCmd* aCmd)
{
}

//******************************************************************************
//******************************************************************************
//******************************************************************************

void CmdLineExec::executeGo2 (Ris::CmdLineCmd* aCmd)
{
}

//******************************************************************************
//******************************************************************************
//******************************************************************************

void CmdLineExec::executeGo3 (Ris::CmdLineCmd* aCmd)
{
}

//******************************************************************************
//******************************************************************************
//******************************************************************************

void CmdLineExec::executeParms(Ris::CmdLineCmd* aCmd)
{
   CX::gStrobeParms.show();
}




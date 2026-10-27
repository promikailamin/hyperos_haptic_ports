.class public Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;
.super Ljava/lang/Object;
.source "ProfcollectForwardingService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;


# direct methods
.method public constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/profcollect/ProfcollectForwardingService;Lcom/android/server/profcollect/ProfcollectForwardingService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;-><init>(Lcom/android/server/profcollect/ProfcollectForwardingService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 311
    const-string v0, "ProfcollectForwardingService"

    const-string/jumbo v1, "profcollectd has died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 313
    invoke-static {v0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$sfputsIProfcollect(Lcom/android/server/profcollect/IProfCollectd;)V

    .line 314
    iget-object p0, p0, Lcom/android/server/profcollect/ProfcollectForwardingService$ProfcollectdDeathRecipient;->this$0:Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-static {p0}, Lcom/android/server/profcollect/ProfcollectForwardingService;->-$$Nest$mtryConnectNativeService(Lcom/android/server/profcollect/ProfcollectForwardingService;)Z

    return-void
.end method

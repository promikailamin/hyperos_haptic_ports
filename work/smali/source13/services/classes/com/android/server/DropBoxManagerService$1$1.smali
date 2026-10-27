.class Lcom/android/server/DropBoxManagerService$1$1;
.super Ljava/lang/Thread;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DropBoxManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/DropBoxManagerService$1;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/DropBoxManagerService$1;

    .line 146
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->-$$Nest$minit(Lcom/android/server/DropBoxManagerService;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->-$$Nest$mtrimToFit(Lcom/android/server/DropBoxManagerService;)J
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 153
    goto :goto_17

    .line 151
    :catch_f
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DropBoxManagerService"

    const-string v2, "Can\'t init"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :goto_17
    return-void
.end method

.class Lcom/android/server/am/MemoryStandardProcessControl$1;
.super Landroid/database/ContentObserver;
.source "MemoryStandardProcessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MemoryStandardProcessControl;->registerCloudObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MemoryStandardProcessControl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/am/MemoryStandardProcessControl;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/MemoryStandardProcessControl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/android/server/am/MemoryStandardProcessControl$1;->this$0:Lcom/android/server/am/MemoryStandardProcessControl;

    iput-object p3, p0, Lcom/android/server/am/MemoryStandardProcessControl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 124
    if-eqz p2, :cond_40

    const-string v0, "cloud_memory_standard_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 125
    iget-object v1, p0, Lcom/android/server/am/MemoryStandardProcessControl$1;->this$0:Lcom/android/server/am/MemoryStandardProcessControl;

    iget-object v2, p0, Lcom/android/server/am/MemoryStandardProcessControl$1;->val$context:Landroid/content/Context;

    .line 126
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/am/MemoryStandardProcessControl;->-$$Nest$fputmEnable(Lcom/android/server/am/MemoryStandardProcessControl;Z)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud control set received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MemoryStandardProcessControl$1;->this$0:Lcom/android/server/am/MemoryStandardProcessControl;

    invoke-static {v1}, Lcom/android/server/am/MemoryStandardProcessControl;->-$$Nest$fgetmEnable(Lcom/android/server/am/MemoryStandardProcessControl;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemoryStandardProcessControl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_40
    return-void
.end method

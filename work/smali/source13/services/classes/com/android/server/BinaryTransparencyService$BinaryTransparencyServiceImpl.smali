.class final Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;
.super Lcom/android/internal/os/IBinaryTransparencyService$Stub;
.source "BinaryTransparencyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinaryTransparencyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinaryTransparencyServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/BinaryTransparencyService;

    .line 78
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-direct {p0}, Lcom/android/internal/os/IBinaryTransparencyService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getApexInfo()Ljava/util/Map;
    .registers 7

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, "results":Ljava/util/HashMap;
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mupdateBinaryMeasurements(Lcom/android/server/BinaryTransparencyService;)Z

    move-result v1

    const-string v2, "TransparencyService"

    if-nez v1, :cond_15

    .line 89
    const-string v1, "Error refreshing APEX measurements."

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-object v0

    .line 92
    :cond_15
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 93
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_27

    .line 94
    const-string v3, "Error obtaining an instance of PackageManager."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-object v0

    .line 98
    :cond_27
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v2}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$mgetInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 99
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v4}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmBinaryHashes(Lcom/android/server/BinaryTransparencyService;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_31

    .line 102
    :cond_4d
    return-object v0
.end method

.method public getSignedImageInfo()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {v0}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmVbmetaDigest(Lcom/android/server/BinaryTransparencyService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;-><init>(Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;)V

    .line 339
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$1;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 340
    return-void
.end method

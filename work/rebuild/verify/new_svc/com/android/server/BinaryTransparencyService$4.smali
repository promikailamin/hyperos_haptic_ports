.class public Lcom/android/server/BinaryTransparencyService$4;
.super Ljava/lang/Object;
.source "BinaryTransparencyService.java"

# interfaces
.implements Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .registers 2

    .line 1671
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$4;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;
    .registers 3

    .line 1681
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$4;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p0}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmServiceImpl(Lcom/android/server/BinaryTransparencyService;)Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V
    .registers 2

    .line 1675
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$4;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p0}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmServiceImpl(Lcom/android/server/BinaryTransparencyService;)Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    return-void
.end method

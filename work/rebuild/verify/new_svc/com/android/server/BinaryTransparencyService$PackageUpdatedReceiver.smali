.class public Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BinaryTransparencyService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BinaryTransparencyService;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService;)V
    .registers 2

    .line 1712
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/BinaryTransparencyService;Lcom/android/server/BinaryTransparencyService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1715
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_55

    .line 1719
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1720
    const-string v0, "TransparencyService"

    if-nez p1, :cond_1b

    .line 1721
    const-string p0, "Shouldn\'t happen: intent data is null!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1725
    :cond_1b
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 1726
    const-string p0, "Not an update. Skipping..."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1730
    :cond_2a
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1736
    iget-object p2, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p2, p1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$misPackageAnApex(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 1737
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was updated. Scheduling measurement..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object p1, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p1}, Lcom/android/server/BinaryTransparencyService;->-$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;->this$0:Lcom/android/server/BinaryTransparencyService;

    invoke-static {p1, p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService;)V

    :cond_55
    :goto_55
    return-void
.end method

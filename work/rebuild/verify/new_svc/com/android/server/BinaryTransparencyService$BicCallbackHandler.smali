.class Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;
.super Landroid/os/IRemoteCallback$Stub;
.source "BinaryTransparencyService.java"


# instance fields
.field public final mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;)V
    .registers 2

    .line 1204
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 1205
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 6

    .line 1210
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    const-string v1, "installEventType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1215
    const-string v1, "TransparencyService.BicCallbackHandler"

    if-eqz v0, :cond_9f

    if-ne p1, v2, :cond_16

    goto/16 :goto_9f

    .line 1220
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected new bic event for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v2, :cond_78

    .line 1222
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 1223
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p1

    if-nez p1, :cond_53

    .line 1225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package state is unavailable, ignoring the package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransparencyService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1230
    :cond_53
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v3, 0x3

    .line 1233
    :goto_5b
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    invoke-interface {v0, p1, v3}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;->collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;

    move-result-object p1

    .line 1235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    .line 1236
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    invoke-interface {v1, v0}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    goto :goto_65

    :cond_77
    return-void

    :cond_78
    if-ne p1, v3, :cond_8a

    .line 1240
    new-instance p1, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;

    invoke-direct {p1}, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;-><init>()V

    .line 1244
    iput-object v0, p1, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1245
    iput v0, p1, Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;->mbaStatus:I

    .line 1246
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler;->mBicAppInfoHelper:Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;

    invoke-interface {p0, p1}, Lcom/android/server/BinaryTransparencyService$BicCallbackHandler$IBicAppInfoHelper;->writeAppInfoToLog(Lcom/android/internal/os/IBinaryTransparencyService$AppInfo;)V

    return-void

    .line 1248
    :cond_8a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported BIC event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1216
    :cond_9f
    :goto_9f
    const-string p0, "Package name or install type is unavailable, ignoring event"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

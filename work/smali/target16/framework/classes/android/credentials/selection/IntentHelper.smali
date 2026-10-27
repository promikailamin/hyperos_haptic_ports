.class public final Landroid/credentials/selection/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public static whitelist extractCancelUiRequest(Landroid/content/Intent;)Landroid/credentials/selection/CancelSelectionRequest;
    .registers 3

    .line 45
    const-string v0, "android.credentials.selection.extra.CANCEL_UI_REQUEST"

    const-class v1, Landroid/credentials/selection/CancelSelectionRequest;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/selection/CancelSelectionRequest;

    return-object p0
.end method

.method public static whitelist extractCreateCredentialProviderInfoList(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/credentials/selection/CreateCredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 78
    const-string v0, "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"

    const-class v1, Landroid/credentials/selection/CreateCredentialProviderData;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    .line 81
    if-nez p0, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_21

    .line 82
    :cond_f
    nop

    .line 81
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    .line 81
    :goto_21
    return-object p0
.end method

.method public static whitelist extractDisabledProviderInfoList(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/credentials/selection/DisabledProviderInfo;",
            ">;"
        }
    .end annotation

    .line 91
    const-string v0, "android.credentials.selection.extra.DISABLED_PROVIDER_DATA_LIST"

    const-class v1, Landroid/credentials/selection/DisabledProviderData;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    .line 94
    if-nez p0, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_21

    .line 95
    :cond_f
    nop

    .line 94
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 95
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    .line 94
    :goto_21
    return-object p0
.end method

.method public static whitelist extractGetCredentialProviderInfoList(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/credentials/selection/GetCredentialProviderInfo;",
            ">;"
        }
    .end annotation

    .line 65
    const-string v0, "android.credentials.selection.extra.ENABLED_PROVIDER_DATA_LIST"

    const-class v1, Landroid/credentials/selection/GetCredentialProviderData;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    .line 68
    if-nez p0, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_21

    .line 69
    :cond_f
    nop

    .line 68
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/credentials/selection/IntentHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    .line 68
    :goto_21
    return-object p0
.end method

.method public static whitelist extractRequestInfo(Landroid/content/Intent;)Landroid/credentials/selection/RequestInfo;
    .registers 3

    .line 55
    const-string v0, "android.credentials.selection.extra.REQUEST_INFO"

    const-class v1, Landroid/credentials/selection/RequestInfo;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/selection/RequestInfo;

    return-object p0
.end method

.method public static whitelist extractResultReceiver(Landroid/content/Intent;)Landroid/os/ResultReceiver;
    .registers 3

    .line 104
    const-string v0, "android.credentials.selection.extra.RESULT_RECEIVER"

    const-class v1, Landroid/os/ResultReceiver;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    return-object p0
.end method

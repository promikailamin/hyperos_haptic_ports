.class Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;
.super Landroid/os/ResultReceiver;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setUpResultReceiver(Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/app/assist/AssistStructure$ViewNodeBuilder;Landroid/os/Handler;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2301
    iput-object p3, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    .line 2304
    const-string v0, "AssistStructure"

    if-nez p1, :cond_1a

    .line 2305
    const-string/jumbo p1, "onReceiveResult from Credential Manager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    const-class p1, Landroid/credentials/GetCredentialResponse;

    .line 2307
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialResponse;

    .line 2311
    iget-object p2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {p2, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 2312
    goto :goto_74

    :cond_1a
    const/4 v1, -0x1

    if-ne p1, v1, :cond_5e

    .line 2313
    const-string p1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2315
    if-eqz p1, :cond_5d

    array-length p2, p1

    const/4 v1, 0x2

    if-lt p2, v1, :cond_5d

    .line 2316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Credman bottom sheet from pinned entry failed with: + "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " , "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object p2, p0, Landroid/app/assist/AssistStructure$ViewNodeBuilder$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v0, Landroid/credentials/GetCredentialException;

    aget-object v1, p1, v1

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 2322
    :cond_5d
    goto :goto_74

    .line 2323
    :cond_5e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown resultCode from credential manager bottom sheet: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    :goto_74
    return-void
.end method

.class public Lcom/miui/translationservice/ITranslation$Default;
.super Ljava/lang/Object;
.source "ITranslation.java"

# interfaces
.implements Lcom/miui/translationservice/ITranslation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/ITranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    .registers 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "word"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/miui/translationservice/ITranslationRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public blacklist translateByEngine(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    .registers 9
    .param p1, "offline"    # Z
    .param p2, "offlineMode"    # I
    .param p3, "engine"    # Ljava/lang/String;
    .param p4, "engineMode"    # I
    .param p5, "source"    # Ljava/lang/String;
    .param p6, "target"    # Ljava/lang/String;
    .param p7, "word"    # Ljava/lang/String;
    .param p8, "callback"    # Lcom/miui/translationservice/ITranslationRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

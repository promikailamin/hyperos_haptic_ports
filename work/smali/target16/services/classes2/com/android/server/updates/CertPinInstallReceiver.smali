.class public Lcom/android/server/updates/CertPinInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "CertPinInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 28
    const-string/jumbo v0, "metadata/"

    const-string/jumbo v1, "version"

    const-string v2, "/data/misc/keychain/"

    const-string/jumbo v3, "pins"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 33
    const-string p0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    .line 35
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/misc/keychain/pins"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 39
    :cond_1c
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/misc/keychain/metadata/version"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 43
    :cond_2c
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/misc/keychain/metadata"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_3c
    return-void
.end method

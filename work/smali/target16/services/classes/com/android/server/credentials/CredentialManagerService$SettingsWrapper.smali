.class public Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1436
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .line 1440
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public getStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1445
    invoke-virtual {p0}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putStringForUser(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 12

    .line 1455
    invoke-virtual {p0}, Lcom/android/server/credentials/CredentialManagerService$SettingsWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    .line 1454
    invoke-static/range {v0 .. v6}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

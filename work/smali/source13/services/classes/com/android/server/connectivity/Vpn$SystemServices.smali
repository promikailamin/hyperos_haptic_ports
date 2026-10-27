.class public Lcom/android/server/connectivity/Vpn$SystemServices;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemServices"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 2169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2170
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    .line 2171
    return-void
.end method

.method private getContentResolverAsUser(I)Landroid/content/ContentResolver;
    .registers 5
    .param p1, "userId"    # I

    .line 2212
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    .line 2213
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2212
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2213
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2212
    return-object v0
.end method


# virtual methods
.method public pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 2178
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    .line 2179
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 2178
    invoke-static {v0, v1, p1, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public settingsSecureGetIntForUser(Ljava/lang/String;II)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userId"    # I

    .line 2208
    invoke-direct {p0, p3}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2201
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public settingsSecurePutIntForUser(Ljava/lang/String;II)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .line 2194
    invoke-direct {p0, p3}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2195
    return-void
.end method

.method public settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2187
    invoke-direct {p0, p3}, Lcom/android/server/connectivity/Vpn$SystemServices;->getContentResolverAsUser(I)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2188
    return-void
.end method

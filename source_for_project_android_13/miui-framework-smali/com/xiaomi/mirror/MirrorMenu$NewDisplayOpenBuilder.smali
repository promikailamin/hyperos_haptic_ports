.class public Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;
.super Ljava/lang/Object;
.source "MirrorMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewDisplayOpenBuilder"
.end annotation


# instance fields
.field blacklist label:Ljava/lang/String;

.field blacklist pi:Landroid/app/PendingIntent;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-string v0, "\u65b0\u7a97\u53e3\u6253\u5f00"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->label:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/xiaomi/mirror/MirrorMenu;
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->pi:Landroid/app/PendingIntent;

    if-eqz v0, :cond_18

    .line 180
    new-instance v0, Lcom/xiaomi/mirror/MirrorMenu;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->pi:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/mirror/MirrorMenu;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Lcom/xiaomi/mirror/MirrorMenu-IA;)V

    return-object v0

    .line 177
    :cond_18
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "label or pendingintent is empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setLabel(Ljava/lang/String;)Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->label:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public blacklist setPendingIntent(Landroid/app/PendingIntent;)Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;
    .registers 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 171
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->pi:Landroid/app/PendingIntent;

    .line 172
    return-object p0
.end method

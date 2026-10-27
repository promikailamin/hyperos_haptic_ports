.class public Lcom/xiaomi/mirror/MirrorMenu$Builder;
.super Ljava/lang/Object;
.source "MirrorMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

.field blacklist label:Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/xiaomi/mirror/MirrorMenu;
    .registers 6

    .line 149
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu$Builder;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu$Builder;->callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

    if-eqz v0, :cond_18

    .line 153
    new-instance v0, Lcom/xiaomi/mirror/MirrorMenu;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/mirror/MirrorMenu$Builder;->label:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorMenu$Builder;->callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/mirror/MirrorMenu;-><init>(ILjava/lang/CharSequence;Lcom/xiaomi/mirror/MirrorMenu$Callback;Lcom/xiaomi/mirror/MirrorMenu-IA;)V

    return-object v0

    .line 150
    :cond_18
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "label or callback is empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCallback(Lcom/xiaomi/mirror/MirrorMenu$Callback;)Lcom/xiaomi/mirror/MirrorMenu$Builder;
    .registers 2
    .param p1, "callback"    # Lcom/xiaomi/mirror/MirrorMenu$Callback;

    .line 144
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorMenu$Builder;->callback:Lcom/xiaomi/mirror/MirrorMenu$Callback;

    .line 145
    return-object p0
.end method

.method public blacklist setLabel(Ljava/lang/CharSequence;)Lcom/xiaomi/mirror/MirrorMenu$Builder;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 139
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorMenu$Builder;->label:Ljava/lang/CharSequence;

    .line 140
    return-object p0
.end method

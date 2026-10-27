.class public Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;
.super Ljava/lang/Object;
.source "MirrorMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PcOpenBuilder"
.end annotation


# instance fields
.field blacklist extra:Ljava/lang/String;

.field blacklist label:Ljava/lang/CharSequence;

.field blacklist uri:Landroid/net/Uri;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const-string v0, "PC\u6253\u5f00"

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;->label:Ljava/lang/CharSequence;

    .line 191
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/xiaomi/mirror/MirrorMenu;
    .registers 8

    .line 209
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_1b

    .line 213
    new-instance v0, Lcom/xiaomi/mirror/MirrorMenu;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;->label:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;->uri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;->extra:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mirror/MirrorMenu;-><init>(ILjava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;Lcom/xiaomi/mirror/MirrorMenu-IA;)V

    return-object v0

    .line 210
    :cond_1b
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "label or uri is empty"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setExtra(Ljava/lang/String;)Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;
    .registers 2
    .param p1, "extra"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;->extra:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public blacklist setLabel(Ljava/lang/CharSequence;)Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;
    .registers 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 194
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;->label:Ljava/lang/CharSequence;

    .line 195
    return-object p0
.end method

.method public blacklist setUri(Landroid/net/Uri;)Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 199
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorMenu$PcOpenBuilder;->uri:Landroid/net/Uri;

    .line 200
    return-object p0
.end method

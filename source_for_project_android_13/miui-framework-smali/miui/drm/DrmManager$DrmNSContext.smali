.class Lmiui/drm/DrmManager$DrmNSContext;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrmNSContext"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/drm/DrmManager$DrmNSContext-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/drm/DrmManager$DrmNSContext;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "o-ex"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 156
    const-string v0, "http://odrl.net/1.1/ODRL-EX"

    goto :goto_21

    .line 157
    :cond_c
    const-string v1, "o-dd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 158
    const-string v0, "http://odrl.net/1.1/ODRL-DD"

    goto :goto_21

    .line 159
    :cond_17
    const-string v1, "oma-dd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 160
    const-string v0, "http://www.openmobilealliance.com/oma-dd"

    .line 162
    :cond_21
    :goto_21
    return-object v0
.end method

.method public whitelist test-api getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

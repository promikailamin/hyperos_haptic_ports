.class public final Landroid/content/om/OverlayableInfo;
.super Ljava/lang/Object;
.source "OverlayableInfo.java"


# instance fields
.field public final blacklist actor:Ljava/lang/String;

.field public final blacklist name:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/content/om/OverlayableInfo;->name:Ljava/lang/String;

    .line 76
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 78
    iput-object p2, p0, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 91
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 93
    :cond_12
    check-cast p1, Landroid/content/om/OverlayableInfo;

    .line 95
    iget-object v2, p0, Landroid/content/om/OverlayableInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/om/OverlayableInfo;->name:Ljava/lang/String;

    .line 96
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    .line 97
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 95
    :goto_2a
    return v0

    .line 91
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 106
    nop

    .line 107
    iget-object v0, p0, Landroid/content/om/OverlayableInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 108
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    return v0
.end method

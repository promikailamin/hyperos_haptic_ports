.class Lmiui/drm/DrmManager$RightObjectCache;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RightObjectCache"
.end annotation


# instance fields
.field public blacklist lastModified:J

.field public blacklist ro:Lmiui/drm/DrmManager$RightObject;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/drm/DrmManager$RightObjectCache-IA;)V
    .registers 2

    invoke-direct {p0}, Lmiui/drm/DrmManager$RightObjectCache;-><init>()V

    return-void
.end method

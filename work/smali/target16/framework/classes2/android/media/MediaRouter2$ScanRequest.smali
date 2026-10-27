.class public final Landroid/media/MediaRouter2$ScanRequest;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScanRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2$ScanRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mIsScreenOffScan:Z


# direct methods
.method private constructor blacklist <init>(Z)V
    .registers 2

    .line 2068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2069
    iput-boolean p1, p0, Landroid/media/MediaRouter2$ScanRequest;->mIsScreenOffScan:Z

    .line 2070
    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/media/MediaRouter2-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ScanRequest;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public whitelist isScreenOffScan()Z
    .registers 2

    .line 2078
    iget-boolean v0, p0, Landroid/media/MediaRouter2$ScanRequest;->mIsScreenOffScan:Z

    return v0
.end method

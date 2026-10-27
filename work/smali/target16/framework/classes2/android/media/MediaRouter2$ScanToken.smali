.class public final Landroid/media/MediaRouter2$ScanToken;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScanToken"
.end annotation


# instance fields
.field private final blacklist mId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/media/MediaRouter2$ScanToken;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaRouter2$ScanToken;->mId:I

    return p0
.end method

.method private constructor blacklist <init>(I)V
    .registers 2

    .line 2054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2055
    iput p1, p0, Landroid/media/MediaRouter2$ScanToken;->mId:I

    .line 2056
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/media/MediaRouter2-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ScanToken;-><init>(I)V

    return-void
.end method

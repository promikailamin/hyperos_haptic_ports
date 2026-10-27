.class public Landroid/app/ActivityThreadStub$BoundsCompatInfo;
.super Ljava/lang/Object;
.source "ActivityThreadStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThreadStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundsCompatInfo"
.end annotation


# instance fields
.field blacklist bounds:Landroid/graphics/Rect;

.field blacklist scale:F

.field blacklist state:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

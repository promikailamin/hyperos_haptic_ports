.class public Landroid/app/TaskLocation;
.super Ljava/lang/Object;
.source "TaskLocation.java"


# instance fields
.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private final blacklist mDisplayId:I


# direct methods
.method public constructor blacklist <init>(ILandroid/graphics/Rect;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/app/TaskLocation;->mDisplayId:I

    .line 37
    iput-object p2, p0, Landroid/app/TaskLocation;->mBounds:Landroid/graphics/Rect;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 51
    iget-object v0, p0, Landroid/app/TaskLocation;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 44
    iget v0, p0, Landroid/app/TaskLocation;->mDisplayId:I

    return v0
.end method

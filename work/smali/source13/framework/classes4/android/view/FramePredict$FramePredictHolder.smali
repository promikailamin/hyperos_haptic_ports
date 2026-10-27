.class public Landroid/view/FramePredict$FramePredictHolder;
.super Ljava/lang/Object;
.source "FramePredict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FramePredict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FramePredictHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Landroid/view/FramePredict;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Landroid/view/FramePredict;
    .registers 1

    sget-object v0, Landroid/view/FramePredict$FramePredictHolder;->INSTANCE:Landroid/view/FramePredict;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Landroid/view/FramePredict;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/FramePredict;-><init>(Landroid/view/FramePredict-IA;)V

    sput-object v0, Landroid/view/FramePredict$FramePredictHolder;->INSTANCE:Landroid/view/FramePredict;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/android/server/wm/WindowToken$FixedRotationTransformState;
.super Ljava/lang/Object;
.source "WindowToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedRotationTransformState"
.end annotation


# instance fields
.field final mAssociatedTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field final mDisplayInfo:Landroid/view/DisplayInfo;

.field mIsTransforming:Z

.field final mRotatedContainers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;>;"
        }
    .end annotation
.end field

.field final mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

.field final mRotator:Lcom/android/server/wm/SeamlessRotator;


# direct methods
.method constructor <init>(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;I)V
    .registers 8
    .param p1, "rotatedDisplayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "rotatedDisplayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "rotatedConfig"    # Landroid/content/res/Configuration;
    .param p4, "currentRotation"    # I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mIsTransforming:Z

    .line 148
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 149
    iput-object p2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 150
    iput-object p3, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 152
    new-instance v1, Lcom/android/server/wm/SeamlessRotator;

    iget v2, p1, Landroid/view/DisplayInfo;->rotation:I

    invoke-direct {v1, v2, p4, p1, v0}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;Z)V

    iput-object v1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    .line 154
    return-void
.end method


# virtual methods
.method disassociate(Lcom/android/server/wm/WindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mAssociatedTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method resetTransform()V
    .registers 5

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 175
    .local v1, "c":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 176
    iget-object v2, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/SeamlessRotator;->finish(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 172
    .end local v1    # "c":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 179
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method transform(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 161
    .local p1, "container":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotator:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/SeamlessRotator;->unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_16
    return-void
.end method

.class Lcom/android/internal/policy/TransitionAnimationStubImpl$1;
.super Ljava/util/ArrayList;
.source "TransitionAnimationStubImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/TransitionAnimationStubImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    const-string v0, "com.android.incallui"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/TransitionAnimationStubImpl$1;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

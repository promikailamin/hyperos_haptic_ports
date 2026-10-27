.class public Lcom/android/internal/policy/TransitionAnimationStubImpl;
.super Ljava/lang/Object;
.source "TransitionAnimationStubImpl.java"

# interfaces
.implements Lcom/android/internal/policy/TransitionAnimationStub;


# static fields
.field static final blacklist WHITE_LIST_ALLOW_CUSTOM_APPLICATION_TRANSITION:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/android/internal/policy/TransitionAnimationStubImpl$1;

    invoke-direct {v0}, Lcom/android/internal/policy/TransitionAnimationStubImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/TransitionAnimationStubImpl;->WHITE_LIST_ALLOW_CUSTOM_APPLICATION_TRANSITION:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist allowCustomTaskAnimation(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packagename"    # Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/android/internal/policy/TransitionAnimationStubImpl;->WHITE_LIST_ALLOW_CUSTOM_APPLICATION_TRANSITION:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 18
    const/4 v0, 0x1

    return v0

    .line 20
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

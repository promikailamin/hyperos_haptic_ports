.class public Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;
.super Ljava/lang/Object;
.source "ImeVisibilityStateComputer.java"


# instance fields
.field public final mReason:I

.field public final mVisible:Z


# direct methods
.method public constructor <init>(ZI)V
    .registers 3

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-boolean p1, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mVisible:Z

    .line 282
    iput p2, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mReason:I

    return-void
.end method


# virtual methods
.method public getReason()I
    .registers 1

    .line 290
    iget p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mReason:I

    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 286
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mVisible:Z

    return p0
.end method

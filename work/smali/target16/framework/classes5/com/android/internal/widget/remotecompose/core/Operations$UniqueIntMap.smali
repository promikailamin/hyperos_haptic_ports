.class public Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
.source "Operations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/Operations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UniqueIntMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 605
    const-class v0, Lcom/android/internal/widget/remotecompose/core/Operations;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 605
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist put(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 608
    nop

    .line 609
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

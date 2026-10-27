.class public final Lmiui/util/ObjectReference;
.super Ljava/lang/Object;
.source "ObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 6
    .local p0, "this":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lmiui/util/ObjectReference;->mObject:Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public final whitelist get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 11
    .local p0, "this":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<TT;>;"
    iget-object v0, p0, Lmiui/util/ObjectReference;->mObject:Ljava/lang/Object;

    return-object v0
.end method

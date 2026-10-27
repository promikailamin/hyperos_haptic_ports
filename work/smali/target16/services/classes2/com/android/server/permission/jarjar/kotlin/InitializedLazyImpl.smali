.class public final Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;
.super Ljava/lang/Object;
.source "Lazy.kt"

# interfaces
.implements Lcom/android/server/permission/jarjar/kotlin/Lazy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/server/permission/jarjar/kotlin/Lazy;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 120
    invoke-virtual {p0}, Lcom/android/server/permission/jarjar/kotlin/InitializedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

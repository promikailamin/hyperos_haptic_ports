.class public interface abstract Lcom/android/server/ExtendMStub;
.super Ljava/lang/Object;
.source "ExtendMStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/ExtendMStub;
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/ExtendMStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ExtendMStub;

    return-object v0
.end method


# virtual methods
.method public abstract dump(Lcom/android/internal/util/IndentingPrintWriter;)V
.end method

.method public abstract getExtMGear()[F
.end method

.method public abstract reportMemPressure(I)V
.end method

.method public abstract start(Landroid/content/Context;)V
.end method

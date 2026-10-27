.class public interface abstract annotation Landroid/gui/TransactionBarrier$BarrierKind;
.super Ljava/lang/Object;
.source "TransactionBarrier.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gui/TransactionBarrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "BarrierKind"
.end annotation


# static fields
.field public static final blacklist KIND_INVALID:B = 0x0t

.field public static final blacklist KIND_SIGNAL:B = 0x1t

.field public static final blacklist KIND_WAIT:B = 0x2t

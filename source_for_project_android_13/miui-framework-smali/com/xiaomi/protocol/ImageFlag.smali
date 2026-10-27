.class public interface abstract annotation Lcom/xiaomi/protocol/ImageFlag;
.super Ljava/lang/Object;
.source "ImageFlag.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist DEPTH_IMAGE:I = 0x3

.field public static final blacklist MAIN_IMAGE:I = 0x0

.field public static final blacklist RAW_IMAGE:I = 0x4

.field public static final blacklist SUB_IMAGE:I = 0x1

.field public static final blacklist TUNING_IMAGE:I = 0x2

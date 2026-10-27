.class public interface abstract annotation Lcom/xiaomi/camera/imagecodec/Constants$FeatureType;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FeatureType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist AIHDR:I = 0x4

.field public static final blacklist AINR:I = 0x2

.field public static final blacklist AISHUTTER2:I = 0x8

.field public static final blacklist MFNR:I = 0x1

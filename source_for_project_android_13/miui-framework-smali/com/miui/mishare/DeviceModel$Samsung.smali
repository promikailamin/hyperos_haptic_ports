.class public Lcom/miui/mishare/DeviceModel$Samsung;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/DeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Samsung"
.end annotation


# static fields
.field public static final blacklist MANUFACTURE_END:B = 0x4bt

.field public static final blacklist MANUFACTURE_START:B = 0x46t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

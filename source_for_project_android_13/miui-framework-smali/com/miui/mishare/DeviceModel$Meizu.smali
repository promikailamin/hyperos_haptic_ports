.class public Lcom/miui/mishare/DeviceModel$Meizu;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/DeviceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Meizu"
.end annotation


# static fields
.field public static final blacklist MANUFACTURE_END:B = 0x3bt

.field public static final blacklist MANUFACTURE_START:B = 0x32t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final Landroid/internal/perfetto/protos/Windowmanagerservice$ImeInsetsSourceProviderProto;
.super Ljava/lang/Object;
.source "Windowmanagerservice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Windowmanagerservice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImeInsetsSourceProviderProto"
.end annotation


# static fields
.field public static final blacklist IME_TARGET_FROM_IME:J = 0x10b00000002L

.field public static final blacklist IME_TARGET_FROM_IME_IDENTIFIER:J = 0x10b00000004L

.field public static final blacklist INSETS_SOURCE_PROVIDER:J = 0x10b00000001L

.field public static final blacklist IS_IME_LAYOUT_DRAWN:J = 0x10800000003L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Windowmanagerservice;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

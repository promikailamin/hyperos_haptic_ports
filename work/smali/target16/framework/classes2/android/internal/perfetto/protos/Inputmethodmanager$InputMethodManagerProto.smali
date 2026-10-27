.class public final Landroid/internal/perfetto/protos/Inputmethodmanager$InputMethodManagerProto;
.super Ljava/lang/Object;
.source "Inputmethodmanager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Inputmethodmanager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputMethodManagerProto"
.end annotation


# static fields
.field public static final blacklist ACTIVE:J = 0x10800000004L

.field public static final blacklist CUR_ID:J = 0x10900000001L

.field public static final blacklist DISPLAY_ID:J = 0x10500000003L

.field public static final blacklist FULLSCREEN_MODE:J = 0x10800000002L

.field public static final blacklist NEXT_SERVED_VIEW:J = 0x10900000007L

.field public static final blacklist SERVED_CONNECTING:J = 0x10800000005L

.field public static final blacklist SERVED_VIEW:J = 0x10900000006L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Inputmethodmanager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

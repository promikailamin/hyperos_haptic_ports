.class public final Landroid/internal/perfetto/protos/Inputconnection$InputConnectionProto;
.super Ljava/lang/Object;
.source "Inputconnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Inputconnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputConnectionProto"
.end annotation


# static fields
.field public static final blacklist CURSOR_CAPS_MODE:J = 0x10500000005L

.field public static final blacklist SELECTED_TEXT_END:J = 0x10500000004L

.field public static final blacklist SELECTED_TEXT_START:J = 0x10500000003L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Inputconnection;)V
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

.class public final Landroid/internal/perfetto/protos/Locale$LocaleProto;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocaleProto"
.end annotation


# static fields
.field public static final blacklist COUNTRY:J = 0x10900000002L

.field public static final blacklist LANGUAGE:J = 0x10900000001L

.field public static final blacklist SCRIPT:J = 0x10900000004L

.field public static final blacklist VARIANT:J = 0x10900000003L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Locale;)V
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

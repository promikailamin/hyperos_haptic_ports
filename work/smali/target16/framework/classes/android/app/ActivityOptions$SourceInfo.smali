.class public Landroid/app/ActivityOptions$SourceInfo;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityOptions$SourceInfo$SourceType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$SourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_COMPLICATION:I = 0x8

.field public static final blacklist TYPE_DESKTOP_ANIMATION:I = 0x5

.field public static final blacklist TYPE_LAUNCHER:I = 0x1

.field public static final blacklist TYPE_LOCKSCREEN:I = 0x3

.field public static final blacklist TYPE_NOTIFICATION:I = 0x2

.field public static final blacklist TYPE_QSS:I = 0x6

.field public static final blacklist TYPE_RECENTS_ANIMATION:I = 0x4

.field public static final blacklist TYPE_TILE:I = 0x7


# instance fields
.field public final blacklist eventTimeMs:J

.field public final blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2955
    new-instance v0, Landroid/app/ActivityOptions$SourceInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$SourceInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$SourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IJ)V
    .registers 4

    .line 2939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2940
    iput p1, p0, Landroid/app/ActivityOptions$SourceInfo;->type:I

    .line 2941
    iput-wide p2, p0, Landroid/app/ActivityOptions$SourceInfo;->eventTimeMs:J

    .line 2942
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2952
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 2946
    iget p2, p0, Landroid/app/ActivityOptions$SourceInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2947
    iget-wide v0, p0, Landroid/app/ActivityOptions$SourceInfo;->eventTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2948
    return-void
.end method

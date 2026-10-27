.class public final Landroid/app/usage/UsageEvents;
.super Ljava/lang/Object;
.source "UsageEvents.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$Event;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageEvents;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIDE_LOCUS_EVENTS:I = 0x8

.field public static final blacklist HIDE_SHORTCUT_EVENTS:I = 0x2

.field public static final greylist-max-o INSTANT_APP_CLASS_NAME:Ljava/lang/String; = "android.instant_class"

.field public static final greylist-max-o INSTANT_APP_PACKAGE_NAME:Ljava/lang/String; = "android.instant_app"

.field public static final blacklist OBFUSCATED_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "unknown_channel_id"

.field public static final blacklist OBFUSCATE_INSTANT_APPS:I = 0x1

.field public static final blacklist OBFUSCATE_NOTIFICATION_EVENTS:I = 0x4

.field public static final blacklist SHOW_ALL_EVENT_DATA:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UsageEvents"


# instance fields
.field private greylist-max-p mEventCount:I

.field private greylist-max-p mEventsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIncludeTaskRoots:Z

.field private greylist-max-p mIndex:I

.field private greylist-max-p mStringPool:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 929
    new-instance v0, Landroid/app/usage/UsageEvents$1;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageEvents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 844
    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 846
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 817
    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents;->readUsageEventsFromParcelWithParceledList(Landroid/os/Parcel;)V

    .line 818
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 819
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/List;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 854
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    .line 855
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;[Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 798
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 862
    iput-object p2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    .line 863
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 864
    iput-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 865
    iput-boolean p3, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 866
    return-void
.end method

.method private blacklist getNextEventFromParceledList(Landroid/app/usage/UsageEvents$Event;)Z
    .registers 4

    .line 898
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    iget v1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {p1, v0}, Landroid/app/usage/UsageEvents$Event;->-$$Nest$mcopyFrom(Landroid/app/usage/UsageEvents$Event;Landroid/app/usage/UsageEvents$Event;)V

    .line 899
    iget p1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 900
    return v0
.end method

.method private blacklist readUsageEventsFromParcelWithParceledList(Landroid/os/Parcel;)V
    .registers 4

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 824
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/usage/ParcelableUsageEventList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/ParcelableUsageEventList;

    .line 826
    if-eqz p1, :cond_25

    .line 827
    invoke-virtual {p1}, Landroid/app/usage/ParcelableUsageEventList;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    goto :goto_2c

    .line 829
    :cond_25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 832
    :goto_2c
    iget p1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_68

    .line 833
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Partial usage event list received: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " != "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 834
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 833
    const-string v0, "UsageEvents"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 837
    :cond_68
    return-void
.end method

.method private blacklist writeUsageEventsToParcelWithParceledList(Landroid/os/Parcel;I)V
    .registers 5

    .line 924
    iget v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    new-instance v0, Landroid/app/usage/ParcelableUsageEventList;

    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/app/usage/ParcelableUsageEventList;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 927
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 915
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z
    .registers 4

    .line 887
    if-eqz p1, :cond_f

    .line 890
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v1, :cond_a

    .line 891
    const/4 p1, 0x0

    return p1

    .line 894
    :cond_a
    invoke-direct {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEventFromParceledList(Landroid/app/usage/UsageEvents$Event;)Z

    move-result p1

    return p1

    .line 888
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given eventOut must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist hasNextEvent()Z
    .registers 3

    .line 875
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o resetToStart()V
    .registers 2

    .line 910
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 911
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 920
    invoke-direct {p0, p1, p2}, Landroid/app/usage/UsageEvents;->writeUsageEventsToParcelWithParceledList(Landroid/os/Parcel;I)V

    .line 921
    return-void
.end method

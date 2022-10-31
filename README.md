# Code Together: Let's make iPhone app in an hour

<img src="https://github.com/iosClassForBeginner/counter_en/blob/main/assets/ss-1.png" width="200px" />

Thank you for visiting our account. We are going to make a counter app in an hour. If would you like to study yourself before hands-on, or review what you have learned in the session, please use the following material.

## Meetup
We are providing free hands-on on a monthly basis

https://www.meetup.com/iOS-Development-Meetup-for-Beginner/

## Development Environment

Xcode 14.0.1 / Swift 5

## Procedure

#### 1, Create your project

- 1-1. Open Xcode
- 1-2. Select **App** and then click **Next**
- 1-4. Fill **Product name**, select **SwiftUI**, language is **swift** then tap **Next**
- 1-5. Select the directory to save your project and then tap **Create**

#### 2, Add code

```swift
struct ContentView: View {
  @State private var count = 0

  var body: some View {
    ZStack {
      Color(.black)
        .edgesIgnoringSafeArea(.all)

      VStack {
        Text("Counter")
          .foregroundColor(.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .padding(.top, 48)
        
        Text("\(count)")
          .font(.system(size: 60))
          .foregroundColor(.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .padding(.top, 24)
          .animation(.default, value: count)
        
        Spacer()
        
        HStack {
          Button {
            count -= 1
          } label: {
            Text("-")
              .font(.largeTitle)
              .fontWeight(.heavy)
              .padding(.horizontal, 24)
              .padding(.vertical, 8)
          }
          
          Button {
            count += 1
          } label: {
            Text("+")
              .font(.largeTitle)
              .fontWeight(.heavy)
              .padding(.horizontal, 24)
              .padding(.vertical, 8)
          }
        }
        .padding(.bottom, 24)
      }
    }
  }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```

## Excersice

1. Add a condition to prevent count become less than zero
2. Add a reset button to set the count to be zero

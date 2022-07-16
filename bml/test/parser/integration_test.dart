import 'package:bml/bml.dart';
import 'package:petitparser/reflection.dart';
import 'package:test/test.dart';

final definition = BmlParserDefinition();
final parser = definition.build();

const samples = [
  r'''(<Frame
      name="Frame1618868751Property1Default"
      overflow="visible"
      width={384}
      height={437}
      {...props}
    >
      <AutoLayout
        name="Frame 1618868750"
        fill="#FFF"
        overflow="visible"
        direction="vertical"
        spacing={19}
        padding={{
          vertical: 56,
          horizontal: 33,
        }}
        horizontalAlignItems="center"
      >
        <Rectangle
          name="Rectangle 1478"
          fill="#7C2CFF"
          cornerRadius={16}
          width={204}
          height={72}
        />
        <Text
          name="Test"
          fill="#000"
          verticalAlignText="center"
          fontFamily="Inter"
          fontSize={46}
        >
          Test
        </Text>
        <Image
          name="image 1"
          cornerRadius={12}
          width={318}
          height={159}
          src="<Add image URL here>"
        />
      </AutoLayout>
      <Ellipse
        name="Ellipse 512"
        x={{
          type: "right",
          offset: 22,
        }}
        y={{
          type: "center",
          offset: -15,
        }}
        fill="#F00"
        width={135}
        height={135}
      />
      <SVG
        name="Star 1"
        x={256.909}
        y={159}
        height={80}
        width={74}
        src="<svg width='76' height='80' viewBox='0 0 76 80' fill='none' xmlns='http://www.w3.org/2000/svg'>
<path d='M38 0L46.7561 30.4033H75.0912L52.1676 49.1935L60.9236 79.5967L38 60.8065L15.0764 79.5967L23.8324 49.1935L0.908813 30.4033H29.244L38 0Z' fill='#D9D9D9'/>
</svg>"
      />
</Frame>)
'''
];

extension ResultExt on Result {
  String reason() => isFailure ? '$message at $position' : '';
}

void main() {
  test('linter', () {
    expect(linter(parser), isEmpty);
  });

  test('samples', () {
    final result = parser.parse(samples.first);
    expect(result.isSuccess, isTrue, reason: result.reason());
    print(result.value);
  });
}
